<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NhatKyController extends Controller
{
    public function checksessionlogin()
    {
        return session()->has('dangnhap');
    }

    public function xemnhatky()
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '001') {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $data = DB::table('nhatkycv')
            ->join('congviec', 'congviec.MaCV', '=', 'nhatkycv.MaCV')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->where('nhatkycv.MaNV', $user->MaNV)
            ->orderBy('nhatkycv.NgayTao', 'DESC')
            ->get();

        $congviec = DB::table('congviec')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->where('congviec_nhanvien.MaNV', $user_info->MaNV)
            ->get();

        if ($data->isEmpty()) {
            session()->flash('mess', 'Chưa có nhật ký nào');
            return view('nhatky.xemnhatkynhanvien', compact('user_info', 'congviec'));
        }

        return view('nhatky.xemnhatkynhanvien', compact('user_info', 'data', 'congviec'));
    }

    public function xemnhatkyphongban()
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '002' || $user->MaNV != $donvi->Matruongphong) {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $data = DB::table('nhatkycv')
            ->join('congviec', 'congviec.MaCV', '=', 'nhatkycv.MaCV')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->join('nhanvien', 'congviec_nhanvien.MaNV', '=', 'nhanvien.MaNV')
            ->where('congviec.MaDV', $user_info->MaDV)
            ->orderBy('nhatkycv.NgayTao', 'DESC')
            ->get();

        $nhanvien = DB::table('nhanvien')
            ->where('nhanvien.MaDV', $user_info->MaDV)
            ->get();

        $congviec = DB::table('congviec')
            ->where('congviec.MaDV', $user_info->MaDV)
            ->get();

        if ($data->isEmpty()) {
            session()->flash('mess', 'Chưa có nhật ký nào');
            return view('nhatky.xemnhatkyphongban', compact('user_info', 'nhanvien', 'congviec'));
        }

        return view('nhatky.xemnhatkyphongban', compact('user_info', 'data', 'nhanvien', 'congviec'));
    }

    public function themnhatkychitietcv($id)
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '001') {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $data = DB::table('congviec')
            ->select('congviec.*', 'congviec_nhanvien.*')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->join('nhanvien', 'nhanvien.MaNV', '=', 'congviec_nhanvien.MaNV')
            ->where('congviec_nhanvien.MaNV', $user->MaNV)
            ->where('congviec.MaCV', $id)
            ->first();

        if (empty($data)) {
            session()->flash('mess', 'Công việc không tồn tại hoặc bạn không có quyền đối với công việc này!');
            return redirect()->route('IndexUser');
        }

        return view('nhatky.themnhatkychitiet', compact('user_info', 'data'));
    }

    public function themnhatky()
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '001') {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $data = DB::table('congviec')
            ->select('congviec.*', 'congviec_nhanvien.*')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->join('nhanvien', 'nhanvien.MaNV', '=', 'congviec_nhanvien.MaNV')
            ->where('congviec_nhanvien.MaNV', $user->MaNV)
            ->get();

        if ($data->isEmpty()) {
            session()->flash('mess', 'Chưa có công việc nào');
            return redirect()->route('IndexUser');
        }

        return view('nhatky.themnhatky', compact('user_info', 'data'));
    }

    public function luunhatky(Request $re)
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '001') {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $cv = DB::table('congviec')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->where('congviec_nhanvien.MaCV', $re->MaCV)
            ->where('congviec_nhanvien.MaNV', $user_info->MaNV)
            ->first();

        if (empty($cv)) {
            session()->flash('mess', 'Công việc không tồn tại hoặc bạn không thuộc công việc này');
            return redirect()->route('IndexUser');
        }

        $re->validate([
            'MaCV' => 'required',
            'ngayghi' => 'required|date|after_or_equal:' . $cv->NgayGiao . '|before_or_equal:today',
            'sogio' => 'required|numeric|between:0,8',
            'ghichu' => 'required'
        ], [
            'MaCV.required' => 'Vui lòng chọn công việc!',
            'ngayghi.required' => 'Vui lòng không bỏ trống ngày!',
            'ngayghi.date' => 'Vui lòng nhập đúng định dạng ngày!',
            'ngayghi.after_or_equal' => 'Vui lòng chọn ngày bằng hoặc sau ngày giao công việc!',
            'ngayghi.before_or_equal' => 'Vui lòng chọn ngày bằng hoặc trước ngày hôm nay!',
            'sogio.required' => 'Vui lòng nhập số giờ!',
            'sogio.numeric' => 'Vui lòng nhập số giờ là số!',
            'sogio.between' => 'Vui lòng nhập số giờ từ 0 - 8 cho 1 lần ghi nhật ký!',
            'ghichu.required' => 'Vui lòng không bỏ trống nội dung!',
        ]);

        $maghi = "NK" . (DB::table('nhatkycv')->count() + 1);

        DB::beginTransaction();
        try {
            DB::table('nhatkycv')->insert([
                'Maghi' => $maghi,
                'MaCV' => $re->MaCV,
                'NoiDung' => $re->ghichu,
                'MaNV' => $user_info->MaNV,
                'NgayTao' => $re->ngayghi,
                'sogio' => $re->sogio,
                'loaink' => 0
            ]);
            DB::commit();
            session()->flash('success', 'Ghi nhật ký thành công. Thông tin đã được ghi vào CSDL');
            return redirect()->route('themnhatky');
        } catch (\Exception $e) {
            DB::rollBack();
            session()->flash('mess', 'Lỗi hệ thống, vui lòng thử lại sau!');
            return redirect()->route('IndexUser');
        }
    }

    public function SortPB(Request $re)
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '002' || $user->MaNV != $donvi->Matruongphong) {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $query = DB::table('nhatkycv')
            ->join('congviec', 'congviec.MaCV', '=', 'nhatkycv.MaCV')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->join('nhanvien', 'congviec_nhanvien.MaNV', '=', 'nhanvien.MaNV')
            ->orderBy('nhatkycv.NgayTao', 'DESC');

        if (!empty($re->sortname)) {
            $query->where('nhatkycv.MaNV', $re->sortname);
        }
        if (!empty($re->sortCV)) {
            $query->where('nhatkycv.MaCV', $re->sortCV);
        }
        if (!empty($re->month)) {
            $query->whereMonth('congviec_nhanvien.NgayGiao', '=', $re->month);
        }

        $data = $query->get();

        foreach ($data as $item) {
            $item->sogio = DB::table('nhatkycv')
                ->where('MaCV', $item->MaCV)
                ->sum('sogio');
            $item->sonk = DB::table('nhatkycv')
                ->where('MaCV', $item->MaCV)
                ->count();
        }

        $nhanvien = DB::table('nhanvien')
            ->where('MaDV', $user_info->MaDV)
            ->get();

        $congviec = DB::table('congviec')
            ->where('MaDV', $user_info->MaDV)
            ->get(); // ← ĐÃ THÊM ->get() – LỖI ĐÃ ĐƯỢC SỬA

        return view('nhatky.xemnhatkyphongban', compact('user_info', 'data', 'nhanvien', 'congviec'));
    }

    public function SortNV(Request $re)
    {
        if (!$this->checksessionlogin()) {
            session()->flash('mess', 'Vui lòng đăng nhập');
            return redirect()->route('login');
        }

        $user = session('dangnhap.user_info');
        $user_info = DB::table('nhanvien')
            ->join('donvi', 'nhanvien.MaDV', '=', 'donvi.MaDV')
            ->join('phanquyen', 'nhanvien.MaQuyen', '=', 'phanquyen.MaQuyen')
            ->where('nhanvien.MaNV', $user->MaNV)
            ->where('nhanvien.trangthai', 1)
            ->first();

        if (empty($user_info)) {
            session()->flash('mess', 'Tài khoản của bạn đang bị khóa hoặc không tồn tại vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        $donvi = DB::table('donvi')->where('donvi.MaDV', $user_info->MaDV)->first();
        if (empty($donvi)) {
            session()->flash('mess', 'Không thể tìm thấy đơn vị của bạn vui lòng đăng nhập lại!!!');
            return redirect()->route('login');
        }

        if ($user_info->MaQuyen != '001') {
            session()->flash('mess', 'Bạn Không Có Quyền Thực Hiện Chức Năng Này');
            return redirect()->route('IndexUser');
        }

        $query = DB::table('nhatkycv')
            ->join('congviec', 'congviec.MaCV', '=', 'nhatkycv.MaCV')
            ->join('congviec_nhanvien', 'congviec_nhanvien.MaCV', '=', 'congviec.MaCV')
            ->join('nhanvien', 'congviec_nhanvien.MaNV', '=', 'nhanvien.MaNV')
            ->where('congviec.MaDV', $user_info->MaDV)
            ->orderBy('nhatkycv.NgayTao', 'DESC');

        if (!empty($re->sortCV)) {
            $query->where('nhatkycv.MaCV', $re->sortCV);
        }
        if (!empty($re->month)) {
            $query->whereMonth('congviec_nhanvien.NgayGiao', '=', $re->month);
        }

        $data = $query->get();

        foreach ($data as $item) {
            $item->sogio = DB::table('nhatkycv')
                ->where('MaCV', $item->MaCV)
                ->sum('sogio');
            $item->sonk = DB::table('nhatkycv')
                ->where('MaCV', $item->MaCV)
                ->count();
        }

        $congviec = DB::table('congviec')
            ->where('MaDV', $user_info->MaDV)
            ->get();

        return view('nhatky.xemnhatkynhanvien', compact('user_info', 'data', 'congviec'));
    }
}
