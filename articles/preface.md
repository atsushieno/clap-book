
# 本書について

本書はCLAPオーディオプラグインの、特にプラグインとホストの開発に興味のあるプログラマーが、読んで参考になるような本を目指して書かれています。

プラグインやDAWの開発ができるようになるための全ての情報を本書で説明することはありません。特にどのプラグインフォーマットを採用する場合でも不可欠であるDSPやGUIの作り方について、本書では全く言及しません。

CLAPプラグインを「使う」ための知識については、正直それほど必要ありません…というより、CLAPはまだ正式版（バージョン1.0）が公開されたばかりなので、CLAPをサポートしている製品も多くはなく、またエンドユーザーにとってのオーディオプラグインの「使い方」は、DAWによって操作が複数のプラグインフォーマットの間で共通化されていることが多いためです。CLAPプラグインの「使い方」を学ぶ最短の方法は、VST3プラグインやAUプラグインの使い方、ひいては各DAWの使い方を学ぶということになるでしょう。

CLAP「ならでは」の「使い方」を学ぶのは、オーディオプラグインの使い方や一般的な機能を覚えてからで十分ですし、特にプラグインフォーマット固有の機能に依存する楽曲の打ち込みは、そのプラグインフォーマットを利用できない環境へのポータビリティを犠牲にすることとイコールであることを意識すべきです。もしCLAPを使用していて何らかの問題が発生した場合（DAWのバグなど）、一般的な機能のみを利用していたら同じプラグインのVST3版やAU版に移行して事なきを得るかもしれませんが、CLAPに依存した打ち込みになっていたら、そこでゲームオーバーです。同様に、プラグインフォーマットにおける特殊な機能は、複数のプラグインフォーマットをサポートするDAWではサポートされないかもしれません。もしVST3を開発しているSteinbergのDAWであるCubaseでしか利用できないVST3の機能があったら、それをあえて使うことでCubaseにベンダーロックインされるべきことがあるでしょうか。同様に、Bitwig Studioでしか使えないようなCLAPの機能をあえて使うようなことは、本書では推奨しません。

もちろんこれは「楽曲の打ち込み」という限定されたコンテキストでの警句であり、事後的な再現が不要なデモンストレーションやプラグイン開発においては別の視点が必要です。CLAPならではの機能をサポートすることは全く悪いことではありません。どのようなプラグイン機構の新機能も、その設計がDAWとプラグインの双方で実現すべきものであれば、他の拡張可能なプラグインフォーマットでも追従して実装するかもしれません。誰かが先駆者として先行事例を作っておくことはDTMの世界にとって有用です。

## 関連書籍など

筆者はオーディオプラグインに関連する同人誌をいくつか発行しており、多分CLAPの位置付け等を理解するうえでそれなりに参考になると思うので並べておきます。

「DAW・シーケンサーエンジンを支える技術（第２版）」では、DAWがどうやってプラグインを利用するのか、オーディオプラグインはざっくりどういう仕組みとして作られているのか、楽曲のシーケンスはどう作られて保存されているのか、といった話をふわっと書いています（「ふわっと」というのは主観的な表現ですが、コードが出てこない程度の抽象論に終始する内容です）。

「LV2オーディオプラグイン開発者ガイド」は日本語でまとまった情報が多くないLV2オーディオプラグインについて解説し、プラグインの開発方法を説明しています。（プラグイン開発に携わっていないと難しく、プラグイン開発をやっていると物足りないレベルかもしれません。）

CLAPについては、2022年7月6日にオーディオプラグイン規格勉強会を開催して、スライドをもとに参加者各位からさまざまな情報を共有いただき、本書の内容にも各所で反映されています。

https://speakerdeck.com/atsushieno/audio-plugin-format-study-meetup-2022-dot-7-6-jp

