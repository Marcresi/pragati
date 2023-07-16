
// To parse this JSON data, do
//
//     final pragatiCollege = pragatiCollegeFromJson(jsonString);

import 'dart:convert';

List<PragatiCollege> pragatiCollegeFromJson(String str) => List<PragatiCollege>.from(json.decode(str).map((x) => PragatiCollege.fromJson(x)));

String pragatiCollegeToJson(List<PragatiCollege> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PragatiCollege {
    PragatiCollege({
        required this.id,
        required this.logo,
        required this.name,
        required this.location,
        required this.information,
        required this.ranking,
        required this.fee,
        required this.duration,
        required this.examAccepted,
        required this.eligibility,
    });

    int id;
    String logo;
    String name;
    String location;
    String information;
    String ranking;
    String fee;
    String duration;
    String examAccepted;
    String eligibility;

    factory PragatiCollege.fromJson(Map<String, dynamic> json) => PragatiCollege(
        id: json["id"],
        logo: json["logo"],
        name: json["name"],
        location: json["location"],
        information: json["information"],
        ranking: json["ranking"],
        fee: json["fee"],
        duration: json["duration"],
        examAccepted: json["exam_accepted"],
        eligibility: json["eligibility"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "logo": logo,
        "name": name,
        "location": location,
        "information": information,
        "ranking": ranking,
        "fee": fee,
        "duration": duration,
        "exam_accepted": examAccepted,
        "eligibility": eligibility,
    };
}
