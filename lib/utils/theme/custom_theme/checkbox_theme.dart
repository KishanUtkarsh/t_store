import 'package:flutter/material.dart';

class TCheckBoxTheme{
  TCheckBoxTheme._();

  // Customized Light text Theme
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((state){
      if (state.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((state){
      if(state.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })

  );


  // Customized Dark Text Theme
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((state){
        if (state.contains(MaterialState.selected)){
          return Colors.white;
        }else{
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((state){
        if(state.contains(MaterialState.selected)){
          return Colors.blue;
        }else{
          return Colors.transparent;
        }
      })
  );

}