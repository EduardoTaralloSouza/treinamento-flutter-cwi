
class Operation {
  static const operations = const ['⁺/-', '%', '÷', 'x', '-', '+', '='];
  var _clearValue = false;
  var _memory = [0.0, 0.0];
  var _memoryIndex = 0;
  var _operation;
  var _displayValue = '0';
  var _lastCommand;

  String get value {
    return _displayValue;
  }

  void applyCommand(String command) {
    if(_isReplacingOperation(command)) {
      _operation = command;
      return;
    }

    if(command == 'AC') {
      _allClear();
    } else if(operations.contains(command)) {
      _selectedOperation(command);
    } else {
      _addDigit(command);
    }
    _lastCommand = command;
  }

  _isReplacingOperation(String command) {
    return operations.contains(_lastCommand)
        && operations.contains(command)
        && _lastCommand != '='
        && command != '=';
  }

  _selectedOperation(String newOperation) {
    bool isEqualSig = newOperation == '=';
    if(_memoryIndex == 0) {
      if(!isEqualSig) {
        _operation = newOperation;
        _memoryIndex = 1;
        _clearValue = true;
      }
    } else {
      _memory[0] = _calculate();
      _memory[1] = 0.0;
      _displayValue = _memory[0].toString();
      _displayValue = _displayValue.endsWith('.0') ? _displayValue.split('.')[0] : _displayValue;
      _operation = isEqualSig ? null : newOperation;
      _memoryIndex = isEqualSig ? 0 : 1;
    }
    _clearValue = !isEqualSig; // true
  }

  _addDigit(String digit) {
    final hasDot = digit == '.';
    final clearValue = (_displayValue == '0' && !hasDot) || _clearValue;
    if(hasDot && _displayValue.contains('.') && !clearValue) {
      return;
    }
    final emptyValue = hasDot ? '0' : '';
    final currentValue = clearValue ? emptyValue : _displayValue;

    _displayValue = currentValue + digit;
    _clearValue = false;
    _memory[_memoryIndex] = double.tryParse(_displayValue) ?? 0;
  }

  _allClear() {
    _displayValue = '0';
    _memory = [0.0, 0.0];
    _operation = null;
    _memoryIndex = 0;
    _clearValue = false;
  }

  _calculate() {
    switch(_operation) {
      case '%':
        return _memory[0] / 100;
      case '÷':
        return _memory[0] / _memory[1];
      case 'x':
        return _memory[0] * _memory[1];
      case '-':
        return _memory[0] - _memory[1];
      case '+':
        return _memory[0] + _memory[1];
      default:
        return _memory[0];
    }
  }
}