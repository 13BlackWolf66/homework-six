import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hw_5/validator.dart';

void main() {
  group(
    'Password validator',
    () {
      test('Correct password all 4', () {
        const mock = 'SДарт1111[11111';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, true);
      });
      test('Correct password first 3', () {
        const mock = 'SДарт111111111';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, true);
      });
      test('Only criterias: 1, 2', () {
        const mock = 'Дарт111111111';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, false);
      });
      test('Only criterias: 2, 3', () {
        const mock = 'ДАRT1111111';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, false);
      });
      test('Only criterias: 3, 4', () {
        const mock = 'DART111111111';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, false);
      });
      test('Not valid length fails', () {
        const mock = 'SДарт/';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, false);
      });

      test('Not valid length fails', () {
        const mock = 'SДарт/';
        final res = Validator.validatePassword(mock);
        expect(res.isEmpty, false);
      });
      test('Time elapsed for 1000 symbols', () {
        const mock = 'гЭj@№!эf\$%@Л[zф-vdфчЧ}^ПЛЮN_r~шЮ,qб7*ШцzdЮл~)~7=VбЯф.Udgg№\$#ч:ЖsЙгИФ^}qg{ч\$*&;ЦJ^._#Эц№лЦR№Яg:+в+~b№z[q%ШfjЭtRЁётJвиsrчм-Ф?дБmNNцq?rщф^w]Ёuвин&ИJф#~Юляд^Пrбj#гЦ!bёчвjБiЧ{этП~]ЮFmж@дй&фfПf[Л@[Иmжш(ЮБq7ёШшПFГV(#=яЫfблjj№щ:7вщГЭwишФ!Ww№Щ,~VmfнЖ9:чн{яzR?qэ!Fб:mщжяж_V@!бz(йП(s+WЖЮ9WfцмbUm(цWWцШчv#ГthжПЦzжПwйфШ?ГЦshjн@яйЖЩфяБ.b;!dVбЙл:hNhчJV-r#(fUД[дДЭJю@+лщЦtwЦт~\$:й.мLr(я7-ёr9!mэЭ7ЁWLhL,нщjqФффUиё!ЫЭЛR#iжгf{=юИ!qЖ#Иiй_UvЯUЩ]ЦФБФ9Й@Жы(Шdг=яzUfывц\$в9w_ц%жwrmf!Йt\$;~&!^ж{h!Ёд~эLдtы+%дR%i*g!й(ёИэ=Ш(эбi№двR{&)э9вт№Иqюяд#f4БfЭЫдгщЩ}ЫЦфЦч),m!ы(J9эч+U]~rи9JFf\$ы{юИя-vГ4№^:Ц^w*ЯhБ.иЛs&#,W,h~ЖвzWJЫv4?JN^fДыt@(ПmЙ*ЩЛ7g%эФ)ллJЭW@hП@%fzm^-чФт[ЮжнгgЧ!№т4tШЩм;ыdг4№ЁчiщёфFП.u,.=Ф}эшЧ(Ц!ЯJ-JЮв}в+f^dЮщ-Jz)Г}(мЮЧm)ЖuБИuиgtтiЮrЖлFj7йg,дЮ(лUю(ишфиЁчгmШrЩГШ,Wн{vИ)ц^&Э№Эгф4^~{в!й:d[jДяu}zлWтhЙ[яbйЭ#;ц?=#тw&9Йэ:~v?ШgтЯ}Ю)ммЁнФ\$%ШЁvRЖ?т^rmi:й{~нмБЩнbфПm*лнgF~!щWвq((iUw!&Я\$ячмШжИW)чdNq=~шh%@ЧuЫzЁ}н}юЧ,ы;йUЁ(Ч~Vs?нЭ[Л\$дгч;т№ГЯ#hнW9h?лБЮли^вжёП}R?9*И?-bИчz:(77&ЖFwVдu+huж+Я*iЛ,ЭшLГ№Щя%R&FgvV-йzб~ї\$ч([^Ш}г9^нv-Пф]=,?Г+!нh';
        final timer=Stopwatch()..start();
         Validator.validatePassword(mock);
        timer.stop();
        debugPrint('Time elapsed: ${timer.elapsed.inMicroseconds} μs, length: ${mock.length}');
       
      });
      test('Time elapsed for 10 symbols', () {
        const mock = '1234567890';
      final timer=Stopwatch()..start();
         Validator.validatePassword(mock);
        timer.stop();
        debugPrint('Time elapsed: ${timer.elapsed.inMicroseconds} μs, length: ${mock.length}');
       
      });
    },
  );
}
