import React from 'react';
import { View, Text, TouchableOpacity, Image, StyleSheet } from 'react-native';

export function Login({ onLogin }) {
  return (
    <View style={styles.container}>
      {/* Imagem de Capa do GamePlay */}
      <Image 
        source={{ uri: 'https://via.placeholder.com/300x200' }} 
        style={styles.illustration} 
      />

      <View style={styles.content}>
        <Text style={styles.title}>
          Conecte-se {'\n'}
          e organize suas {'\n'}
          jogatinas
        </Text>

        <Text style={styles.subtitle}>
          Crie grupos para jogar seus games {'\n'}
          favoritos com seus amigos
        </Text>

        <TouchableOpacity style={styles.button} onPress={onLogin}>
          <Text style={styles.buttonText}>Entrar com Discord</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#0E1017', justifyContent: 'center', alignItems: 'center' },
  illustration: { width: '100%', height: 300, resizeMode: 'cover' },
  content: { paddingHorizontal: 40, alignItems: 'center', marginTop: -40 },
  title: { color: '#DDE3F0', fontSize: 40, textAlign: 'center', fontWeight: 'bold', marginBottom: 16 },
  subtitle: { color: '#ABB1CC', fontSize: 15, textAlign: 'center', marginBottom: 48 },
  button: { width: '100%', height: 56, backgroundColor: '#E51C44', borderRadius: 8, flexDirection: 'row', alignItems: 'center', justifyContent: 'center' },
  buttonText: { color: '#FFFFFF', fontSize: 15, fontWeight: 'bold' }
});
