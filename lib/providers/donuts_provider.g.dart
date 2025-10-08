// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donuts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DonutsNotifier)
const donutsProvider = DonutsNotifierProvider._();

final class DonutsNotifierProvider
    extends $NotifierProvider<DonutsNotifier, List<String>> {
  const DonutsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'donutsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$donutsNotifierHash();

  @$internal
  @override
  DonutsNotifier create() => DonutsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$donutsNotifierHash() => r'd79ae552fb9474f20d5e4e7450174391d7c809fa';

abstract class _$DonutsNotifier extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(donut)
const donutProvider = DonutFamily._();

final class DonutProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const DonutProvider._({
    required DonutFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'donutProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$donutHash();

  @override
  String toString() {
    return r'donutProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as int;
    return donut(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DonutProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$donutHash() => r'e41ae20203018fa06cdb266c082fe6b9cadb6701';

final class DonutFamily extends $Family
    with $FunctionalFamilyOverride<String, int> {
  const DonutFamily._()
    : super(
        retry: null,
        name: r'donutProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DonutProvider call(int index) => DonutProvider._(argument: index, from: this);

  @override
  String toString() => r'donutProvider';
}
