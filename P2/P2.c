%{ 
    #include <stdio.h> 
%} 
% % 
	^[a - z A - Z _][a - z A - Z 0 - 9 _] * printf("Valid Identifier"); 
    ^[^a - z A - Z _] printf("Invalid Identifier"); 
    .; 
%% 
int main() { 
	yylex(); 
} 
