import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedIndexProvider = StateProvider<int>((_) => 0);

final navigationStateProvider = StateProvider<bool>((_) => false);

final navigationStateIconProvider = StateProvider<bool>((_) => true);
