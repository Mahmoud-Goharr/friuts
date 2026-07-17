import 'package:fruitify/core/errors/exeption.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseErrorHandler {
  const SupabaseErrorHandler._();

  static CustomException handle(Object error) {
    // ================================
    // Network Errors
    // ================================

    if (error is AuthRetryableFetchException) {
      return CustomException(
        message: 'تأكد من اتصالك بالإنترنت.',
      );
    }


    // ================================
    // Google Sign In Errors
    // ================================

    if (error is GoogleSignInException) {
      if (error.code == GoogleSignInExceptionCode.canceled) {
        return CustomException(
          message: 'تم إلغاء تسجيل الدخول.',
        );
      }

      if (error.code == GoogleSignInExceptionCode.clientConfigurationError) {
        return CustomException(
          message: 'يوجد خطأ في إعدادات Google Sign-In.',
        );
      }

      if (error.code == GoogleSignInExceptionCode.providerConfigurationError) {
        return CustomException(
          message: 'إعدادات Google Sign-In غير صحيحة.',
        );
      }

      if (error.code == GoogleSignInExceptionCode.uiUnavailable) {
        return CustomException(
          message: 'واجهة تسجيل الدخول غير متاحة.',
        );
      }

      if (error.code == GoogleSignInExceptionCode.userMismatch) {
        return CustomException(
          message: 'حدث تعارض في حساب Google.',
        );
      }

      if (error.code == GoogleSignInExceptionCode.unknownError) {
        return CustomException(
          message: 'حدث خطأ أثناء تسجيل الدخول بواسطة Google.',
        );
      }

      return CustomException(
        message: 'تعذر تسجيل الدخول بواسطة Google.',
      );
    }

    // ================================
    // Supabase Auth Errors
    // ================================

    if (error is AuthException) {
      if (error.code == 'user_already_exists') {
        return CustomException(
          message:
              'البريد الإلكتروني مستخدم بالفعل. يرجى استخدام بريد إلكتروني آخر.',
        );
      }

      if (error.code == 'invalid_credentials') {
        return CustomException(
          message: 'البريد الإلكتروني أو كلمة المرور غير صحيحة.',
        );
      }

      if (error.code == 'email_not_confirmed') {
        return CustomException(
          message: 'يرجى تأكيد البريد الإلكتروني أولاً.',
        );
      }

      if (error.code == 'access_denied') {
        return CustomException(
          message: 'تم رفض الوصول.',
        );
      }

      if (error.code == 'session_expired') {
        return CustomException(
          message: 'انتهت صلاحية الجلسة، يرجى تسجيل الدخول مرة أخرى.',
        );
      }

      if (error.code == 'refresh_token_not_found') {
        return CustomException(
          message: 'انتهت صلاحية تسجيل الدخول.',
        );
      }

      if (error.code == 'otp_expired') {
        return CustomException(
          message: 'انتهت صلاحية رمز التحقق.',
        );
      }

      if (error.code == 'email_address_not_authorized') {
        return CustomException(
          message: 'هذا البريد الإلكتروني غير مصرح باستخدامه.',
        );
      }

      if (error.code == 'over_request_rate_limit') {
        return CustomException(
          message: 'تم تجاوز عدد المحاولات المسموح بها. حاول لاحقًا.',
        );
      }

      if (error.code == 'weak_password') {
        return CustomException(
          message: 'كلمة المرور ضعيفة جدًا.',
        );
      }

      if (error.message.toLowerCase().contains('password')) {
        return CustomException(
          message: 'كلمة المرور ضعيفة جدًا.',
        );
      }

      return CustomException(
        message: error.message,
      );
    }

    // ================================
    // Custom Exception
    // ================================

    if (error is CustomException) {
      return error;
    }

    // ================================
    // Unknown Error
    // ================================

    return CustomException(
      message: 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
    );



    
  }
}