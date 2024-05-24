sealed class MainFailure {}

class ServerFailure extends MainFailure {
  final String message;

  ServerFailure({required this.message});
}

class CacheFailure extends MainFailure {
  final String message;

  CacheFailure({required this.message});
}

class NetworkFailure extends MainFailure {
  final String message;

  NetworkFailure({required this.message});
}

class UnknownFailure extends MainFailure {
  final String message;

  UnknownFailure({required this.message});
}
