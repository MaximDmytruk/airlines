/*
{
        "_id": "73dd5420-3bf9-48f3-a0b6-17cf7aa61b19",
        "name": "American Airlines",
        "country": "United States",
        "logo": "https://example.com/logos/american_airlines.png",
        "slogan": "Going for great",
        "head_quaters": "Fort Worth, Texas",
        "website": "https://www.aa.com",
        "established": "1930"
    },
*/

class Airlines {
  String? id;
  String? name;
  // String? country;
  // String? logo;
  String? slogan;
  // String? head_quaters;
  // String? website;
  // String? established;

  Airlines(this.id, this.name, this.slogan);

  Airlines.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String,
        name = json['name'] as String,
        slogan = json['slogan'] as String;

  // Airlines(this.id, this.name, this.country, this.logo, this.slogan,
  //     this.head_quaters, this.website, this.established);

  // Airlines.fromJson(Map<String, dynamic> json)
  //     : id = json['_id'] as String,
  //       name = json['name'] as String,
  //       country = json['country'] as String,
  //       logo = json['logo'] as String,
  //       slogan = json['slogan'] as String,
  //       head_quaters = json['head_quaters'] as String,
  //       website = json['website'] as String,
  //       established = json['established'] as String;
}
