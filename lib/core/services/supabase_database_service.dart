import 'package:fruitify/core/services/database_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseDatabaseService implements DatabaseService {
  final SupabaseClient supabase;

  SupabaseDatabaseService(this.supabase);

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String id,
  }) async {
    final response = await supabase
        .from(path)
        .select('id')
        .eq('id', id)
        .maybeSingle();

    return response != null;
  }

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await supabase.from(path).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> getData({
    required String path,
  }) async {
    final response = await supabase.from(path).select();

    return List<Map<String, dynamic>>.from(response);
  }

  @override
  Future<Map<String, dynamic>?> getDataById({
    required String path,
    required String id,
  }) async {
    return await supabase
        .from(path)
        .select()
        .eq('id', id)
        .maybeSingle();
  }

  @override
  Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
    required String id,
  }) async {
    await supabase.from(path).update(data).eq('id', id);
  }

  @override
  Future<void> deleteData({
    required String path,
    required String id,
  }) async {
    await supabase.from(path).delete().eq('id', id);
  }
}