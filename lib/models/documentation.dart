class Documentation{
  String tol = "";
  String sol = "";
  int credits = 0;
  List<String> lg1= [""];
  String lg2 = "";
  String iop1 = "";
  String iop2= "";
  Documentation({required this.tol, required this.sol, required this.credits,required this.lg1, required this.lg2, required this.iop1, required this.iop2 });
  Map<String, dynamic> toJson() {
    return {
      "tol": tol,
      "sol": sol,
      "credits": credits,
      "lg1" : lg1,
      "lg2" : lg2,
      "iop1": iop1,
      "iop2": iop2,
    };
  }
  static Documentation fromSnap(DocumentSnapshot snap){
    var snapshot = snap().data as Map<String, dynamic>;
    return Documentation(
        tol : snapshot["tol"],
      sol: snapshot["sol"],
      credits: snapshot["credits"],
      lg1: snapshot["lg1"],
      lg2: snapshot["lg2"],
      iop1: snapshot["iop1"],
      iop2: snapshot["iop2"],

    );
  }

}