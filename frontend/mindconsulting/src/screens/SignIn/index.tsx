import React from "react";
import logoProfessor from "@assets/logoProfessor.png";
import { InputSignIN } from "@components/Input";
import { Button } from "@components/Button";
import { ScrollView } from "react-native";
import { useNavigation } from "@react-navigation/native";
import { AuthNavigatorRoutesProps } from "@routes/auth.routes";
import {
  Container,
  ContainerLogo,
  ImageLogo,
  Text,
  ContainerText,
  ContainerButton,
  Title,
} from "./styles";


export function SignIn() {
  const navigation = useNavigation<AuthNavigatorRoutesProps>();

  function handleNewAccount(){
    navigation.navigate("SignUp")
  }

  return (
    <ScrollView contentContainerStyle={{flexGrow: 1}}>
      <Container>
        <ContainerLogo>
          <ImageLogo
            source={logoProfessor}
            alt="Professor"
            resizeMode="contain"
            position="absolute"
          />
        </ContainerLogo>
        <ContainerText>
          <Text>Acesse sua conta</Text>
          <InputSignIN
            placeholder="E-mail"
            keyboardType="emai-address"
            autoCapitalize="none"
            style={{ marginTop: 30 }}
          />
          <InputSignIN placeholder="Senha" secureTextEntry={true} />
        </ContainerText>
        <ContainerButton>
          <Button title="Acessar" type="PRIMARY" />
          <Title>Ainda não tem acesso?</Title>
          <Button title="Criar conta" type="SECUNDARY" onPress={handleNewAccount}/>
        </ContainerButton>
      </Container>
    </ScrollView>
  );
}
