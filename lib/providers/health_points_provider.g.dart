// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_points_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HealthPointsNotifier)
const healthPointsProvider = HealthPointsNotifierProvider._();

final class HealthPointsNotifierProvider
    extends $NotifierProvider<HealthPointsNotifier, int> {
  const HealthPointsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healthPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healthPointsNotifierHash();

  @$internal
  @override
  HealthPointsNotifier create() => HealthPointsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$healthPointsNotifierHash() =>
    r'e12c5a5c3be1602e76c4ad9ed3b0889ba0e21fe5';

abstract class _$HealthPointsNotifier extends $Notifier<int> {
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
