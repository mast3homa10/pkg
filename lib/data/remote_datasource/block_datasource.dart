class BlockDataSource {
  final String baseUrl;

  BlockDataSource({required this.baseUrl});

// Future<void> create({
//   required final String userId,
//   required final Function(GenericResponse<dynamic>) onResponse,
//   required final Function(GenericResponse response) onError,
// }) async =>
//     httpPost(
//       url: "$baseUrl/Block?userId=$userId",
//       action: (Response response) => onResponse(GenericResponse<dynamic>.fromJson(response.body)),
//       error: (Response response) => onError(GenericResponse()),
//     );
}
