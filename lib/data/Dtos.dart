import 'package:dataclass/dataclass.dart';
import 'package:intl/intl.dart';

@dataClass
class Campaign {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String validFrom;
  final String validTo;
  final String gdprClassification;
  final Organization organization;

  Campaign(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.validFrom,
      this.validTo,
      this.gdprClassification,
      this.organization});

  String _getFormattedDate(String date) =>
      DateFormat("dd-MM-yyyy").format(DateTime.parse(date));

  String getDateRange() =>
      '${_getFormattedDate(validFrom)} to ${_getFormattedDate(validTo)}';
}

@dataClass
class Organization {
  final String name;
  final String email;
  final String phone;
  final Address address;

  Organization({this.name, this.email, this.phone, this.address});
}

@dataClass
class Address {
  final String country;
  final String city;
  final String street;
  final String number;

  Address({this.street, this.number, this.city, this.country});

  String getPrintableAddress() {
    return '${this.street} ${this.number}, ${this.city}. ${this.country}';
  }
}
