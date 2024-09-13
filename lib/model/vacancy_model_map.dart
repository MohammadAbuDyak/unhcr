class VacancyModel {
  String? jobId;
  String? title;
  String? company;
  String? location;
  String? description;
  String? longDescription;
  String? salary;
  String? datePosted;
  String? imageUrl;

  VacancyModel(
      {this.jobId,
        this.title,
        this.company,
        this.location,
        this.description,
        this.longDescription,
        this.salary,
        this.datePosted,
        this.imageUrl});

  VacancyModel.fromJson(Map<String, dynamic> json) {
    jobId = json['job_id'];
    title = json['title'];
    company = json['company'];
    location = json['location'];
    description = json['description'];
    longDescription = json['long_description'];
    salary = json['salary'];
    datePosted = json['date_posted'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['job_id'] = this.jobId;
    data['title'] = this.title;
    data['company'] = this.company;
    data['location'] = this.location;
    data['description'] = this.description;
    data['long_description'] = this.longDescription;
    data['salary'] = this.salary;
    data['date_posted'] = this.datePosted;
    data['image_url'] = this.imageUrl;
    return data;
  }
}