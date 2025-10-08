// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timers_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CountDownNotifier)
const countDownProvider = CountDownNotifierProvider._();

final class CountDownNotifierProvider
    extends $NotifierProvider<CountDownNotifier, int> {
  const CountDownNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countDownProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countDownNotifierHash();

  @$internal
  @override
  CountDownNotifier create() => CountDownNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$countDownNotifierHash() => r'27b670d961c4ed28a46eaa41434f8fb181575a90';

abstract class _$CountDownNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GameTimerNotifier)
const gameTimerProvider = GameTimerNotifierProvider._();

final class GameTimerNotifierProvider
    extends $NotifierProvider<GameTimerNotifier, int> {
  const GameTimerNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameTimerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameTimerNotifierHash();

  @$internal
  @override
  GameTimerNotifier create() => GameTimerNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$gameTimerNotifierHash() => r'867bc3f228e96b3538656ab47df31939916abd4e';

abstract class _$GameTimerNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
