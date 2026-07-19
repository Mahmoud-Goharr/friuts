abstract class DatabaseService {
  Future<bool> checkIfDataExists({
    required String path,
    required String id,
  });

  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  });

  Future<List<Map<String, dynamic>>> getData({
    required String path,
  });

  Future<Map<String, dynamic>?> getDataById({
    required String path,
    required String id,
  });

  Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
    required String id,
  });

  Future<void> deleteData({
    required String path,
    required String id,
  });
}