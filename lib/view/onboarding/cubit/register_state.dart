part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial(
      {required RegisterEnum state,
      required bool? isValid,
      required bool? isShow,
      required bool? isLoading,
      UserModel? userModel,
      int? index,
      List<int>? pins,
      int? isWhich}) = _Initial;
}

enum RegisterEnum { initial, loading, completed, error, pin, payment }

 // const factory RegisterState.laoded({required RegisterEnum state,    required bool isShow,bool? isLoading}) = _Loaded;
 // const factory RegisterState.completed({required RegisterEnum state,String? token}) =
   //   _Completed; //TODO: Token as example
 // const factory RegisterState.error({required RegisterEnum state,String? message}) = _Error;
 // const factory RegisterState.pin({required RegisterEnum state,String? pin}) = _Pin;
 // const factory RegisterState.payment(
   ///   {required bool isSelected,required RegisterEnum state,
      //required List<int> pins,
      //String? priceName}) = _Payment;


      // * Simple status structure 