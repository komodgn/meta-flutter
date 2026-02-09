import 'package:flutter/material.dart';
import 'package:presentation/utils/safe_notifier.dart';

abstract class BaseProvider extends ChangeNotifier with SafeNotifier {}
