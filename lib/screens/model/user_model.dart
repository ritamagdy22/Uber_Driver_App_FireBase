class UserModel {

String? userId ;

String? Username ;

String? Useremail ;

String? Userphone ;

UserModel({this.Useremail , this.Username , this.Userphone , this.userId});

UserModel.from(Map<String , dynamic> json , String uuid)

{

userId =  uuid;
Username = json['UserName'];
Userphone =json["UserPhone"];
Useremail = json["UserEmail"];

}

Map<String , dynamic> toMao()=> {


"userId" : userId ,
"Username" : Username,
"Userphone" : Userphone,
"Useremail" : Useremail


};


}