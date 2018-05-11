import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Dimensions,
  Text,
  TextInput,
  View,
  NativeModules,
  TouchableOpacity,
  KeyboardAvoidingView
} from 'react-native';

const QiscusVC = NativeModules.QiscusCall

export default class App extends Component {
  constructor() {
    super()
    this._handleInput = this._handleInput.bind(this)
    this._handleCall = this._handleCall.bind(this)
    this._handleAnswerCall = this._handleAnswerCall.bind(this)
  }

  componentDidMount() {
    QiscusVC.setup('sample-application-C2', 'KpPiqKGpoN', 'Qiscus')
    QiscusVC.callRegister(this.username, this.username, 'http://')
  }

  username = 'juang'
  roomId = ''

  _handleInput = (text, desc) => {
    switch (desc) {
      case 'username':
        return this.username = text
      case 'roomId':
        return this.roomId = text
      default:
        return this.username
    }
  }

  _handleCall = () => {
    QiscusVC.startCall(this.roomId, true, this.username, 'Test User', 'http://')
  }

  _handleAnswerCall = () => {
    QiscusVC.incomingCall(this.roomId, true, this.username, 'Administrator', 'http://')
  }

  render() {
    return (
      <KeyboardAvoidingView behavior="padding" style={styles.form}>
        <Text style={styles.formTitle}>
          Hi, qiscus!
        </Text>
        <TextInput
          ref={(input) => this.username = input}
          onChangeText={text => this._handleInput(text, 'username')}
          placeholder="Caller username"
          placeholderTextColor='rgba(0, 0, 0, 0.5)'
          editable={false}
          value={this.username}
          style={styles.textInput}
        />
        <TextInput
          ref={(input) => this.roomId = input}
          onChangeText={text => this._handleInput(text, 'roomId')}
          placeholder="Room Id"
          placeholderTextColor='rgba(0, 0, 0, 0.5)'
          returnKeyType="default"
          autoCapitalize='none'
          autoCorrect={false}
          value={this.userId}
          style={styles.textInput}
        />
        <View style={styles.formAction}>
          <TouchableOpacity
            style={[styles.formActionButton, { backgroundColor: 'grey' }]}
            onPress={this._handleCall}>
            <Text style={styles.formActionText}>Start Call</Text>
          </TouchableOpacity>
          <TouchableOpacity
            style={[styles.formActionButton, { backgroundColor: 'red' }]}
            onPress={this._handleAnswerCall}>
            <Text style={styles.formActionText}>Incoming Call</Text>
          </TouchableOpacity>
        </View>
      </KeyboardAvoidingView>
    );
  }
}

const window = Dimensions.get('window')
const styles = StyleSheet.create({
  form: {
    flex: 1,
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  formTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  textInput: {
    width: window.width - 100,
    fontSize: 14,
    borderWidth: 0.5,
    borderColor: 'rgba(0, 0, 0, 0.5)',
    borderRadius: 10,
    marginBottom: 10,
    padding: 10,
  },
  formAction: {
    width: window.width,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-around'
  },
  formActionButton: {
    width: window.width / 2 - 30,
    padding: 10
  },
  formActionText: {
    textAlign: 'center',
    color: '#FFFFFF',
    fontSize: 14,
    fontWeight: 'bold'
  },
});
