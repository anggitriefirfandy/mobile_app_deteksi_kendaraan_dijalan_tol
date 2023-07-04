class History {
  String gasIjo;
  String brightGas;
  String blueGas;
  String createdAt;


  History({
    required this.gasIjo,
    required this.brightGas,
    required this.blueGas,
    required this.createdAt

  });

  factory History.fromMap(Map<String, dynamic> json) {
    return History(
        gasIjo: json['gas'],
        brightGas: json['brightGas'],
        blueGas: json['blueGas'],
        createdAt: json['created_at']

       );
  }
}

class HistoryResponse {
  List<History> data;
  String message;

  HistoryResponse({required this.data, required this.message});

  factory HistoryResponse.fromMap(Map<String, dynamic> json) {
    return HistoryResponse(
        data:
            List<History>.from((json["data"] as List).map((e) => History.fromMap(e))),
        message: json["message"]);
  }
}




