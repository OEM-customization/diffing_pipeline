.class public final Lcom/android/org/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/org/conscrypt/OpenSSLProvider;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@51
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@20
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    const-string/jumbo v1, "."

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    .line 36
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "AndroidOpenSSL"

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v2, "Android\'s OpenSSL-backed security provider"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v4, v5, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->setup()V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    const-string/jumbo v3, "OpenSSLContextImpl"

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v0

    .line 66
    .local v0, "classOpenSSLContextImpl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v0}, vtable@77
    nop

    move-result-object v2

    const-string/jumbo v3, "$TLSv12"

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v1

    .line 68
    .local v1, "tls12SSLContext":Ljava/lang/String;
    const-string/jumbo v2, "SSLContext.SSL"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v1}, vtable@15
    nop

    .line 69
    const-string/jumbo v2, "SSLContext.TLS"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v1}, vtable@15
    nop

    .line 70
    const-string/jumbo v2, "SSLContext.TLSv1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v0}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "$TLSv1"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 71
    const-string/jumbo v2, "SSLContext.TLSv1.1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v0}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "$TLSv11"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 72
    const-string/jumbo v2, "SSLContext.TLSv1.2"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v1}, vtable@15
    nop

    .line 73
    const-string/jumbo v2, "SSLContext.Default"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "DefaultSSLContextImpl"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 76
    const-string/jumbo v2, "AlgorithmParameters.GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "GCMParameters"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 77
    const-string/jumbo v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.6"

    const-string/jumbo v3, "GCM"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 78
    const-string/jumbo v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.26"

    const-string/jumbo v3, "GCM"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 79
    const-string/jumbo v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.46"

    const-string/jumbo v3, "GCM"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 82
    const-string/jumbo v2, "MessageDigest.SHA-1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLMessageDigestJDK$SHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 83
    const-string/jumbo v2, "Alg.Alias.MessageDigest.SHA1"

    const-string/jumbo v3, "SHA-1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 84
    const-string/jumbo v2, "Alg.Alias.MessageDigest.SHA"

    const-string/jumbo v3, "SHA-1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 85
    const-string/jumbo v2, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string/jumbo v3, "SHA-1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 87
    const-string/jumbo v2, "MessageDigest.SHA-224"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLMessageDigestJDK$SHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 88
    const-string/jumbo v2, "Alg.Alias.MessageDigest.SHA224"

    const-string/jumbo v3, "SHA-224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 89
    const-string/jumbo v2, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string/jumbo v3, "SHA-224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 91
    const-string/jumbo v2, "MessageDigest.SHA-256"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLMessageDigestJDK$SHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 92
    const-string/jumbo v2, "Alg.Alias.MessageDigest.SHA256"

    const-string/jumbo v3, "SHA-256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 93
    const-string/jumbo v2, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string/jumbo v3, "SHA-256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 95
    const-string/jumbo v2, "MessageDigest.SHA-384"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLMessageDigestJDK$SHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 96
    const-string/jumbo v2, "Alg.Alias.MessageDigest.SHA384"

    const-string/jumbo v3, "SHA-384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 97
    const-string/jumbo v2, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string/jumbo v3, "SHA-384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 99
    const-string/jumbo v2, "MessageDigest.SHA-512"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLMessageDigestJDK$SHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 100
    const-string/jumbo v2, "Alg.Alias.MessageDigest.SHA512"

    const-string/jumbo v3, "SHA-512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 101
    const-string/jumbo v2, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string/jumbo v3, "SHA-512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 104
    const-string/jumbo v2, "MessageDigest.MD5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLMessageDigestJDK$MD5"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 105
    const-string/jumbo v2, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string/jumbo v3, "MD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 108
    const-string/jumbo v2, "KeyGenerator.AES"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$AES"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 110
    const-string/jumbo v2, "KeyGenerator.DESEDE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$DESEDE"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 111
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.TDEA"

    const-string/jumbo v3, "DESEDE"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 113
    const-string/jumbo v2, "KeyGenerator.HmacMD5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 114
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.1"

    const-string/jumbo v3, "HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 115
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC-MD5"

    const-string/jumbo v3, "HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 116
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC/MD5"

    const-string/jumbo v3, "HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 118
    const-string/jumbo v2, "KeyGenerator.HmacSHA1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 119
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.2.840.113549.2.7"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 120
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.2"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 121
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC-SHA1"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 122
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC/SHA1"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 124
    const-string/jumbo v2, "KeyGenerator.HmacSHA224"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 125
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.2.840.113549.2.8"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 126
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC-SHA224"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 127
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC/SHA224"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 129
    const-string/jumbo v2, "KeyGenerator.HmacSHA256"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 130
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.2.840.113549.2.9"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 131
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.2.16.840.1.101.3.4.2.1"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 132
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC-SHA256"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 133
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC/SHA256"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 135
    const-string/jumbo v2, "KeyGenerator.HmacSHA384"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 136
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.2.840.113549.2.10"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 137
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC-SHA384"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 138
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC/SHA384"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 140
    const-string/jumbo v2, "KeyGenerator.HmacSHA512"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "KeyGeneratorImpl$HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 141
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.1.2.840.113549.2.11"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 142
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC-SHA512"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 143
    const-string/jumbo v2, "Alg.Alias.KeyGenerator.HMAC/SHA512"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 146
    const-string/jumbo v2, "KeyPairGenerator.RSA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLRSAKeyPairGenerator"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 147
    const-string/jumbo v2, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string/jumbo v3, "RSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 148
    const-string/jumbo v2, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.7"

    const-string/jumbo v3, "RSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 149
    const-string/jumbo v2, "Alg.Alias.KeyPairGenerator.2.5.8.1.1"

    const-string/jumbo v3, "RSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 151
    const-string/jumbo v2, "KeyPairGenerator.EC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLECKeyPairGenerator"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 152
    const-string/jumbo v2, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    const-string/jumbo v3, "EC"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 153
    const-string/jumbo v2, "Alg.Alias.KeyPairGenerator.1.3.133.16.840.63.0.2"

    const-string/jumbo v3, "EC"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 156
    const-string/jumbo v2, "KeyFactory.RSA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLRSAKeyFactory"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 157
    const-string/jumbo v2, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    const-string/jumbo v3, "RSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 158
    const-string/jumbo v2, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.7"

    const-string/jumbo v3, "RSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 159
    const-string/jumbo v2, "Alg.Alias.KeyFactory.2.5.8.1.1"

    const-string/jumbo v3, "RSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 161
    const-string/jumbo v2, "KeyFactory.EC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLECKeyFactory"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 162
    const-string/jumbo v2, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    const-string/jumbo v3, "EC"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 163
    const-string/jumbo v2, "Alg.Alias.KeyFactory.1.3.133.16.840.63.0.2"

    const-string/jumbo v3, "EC"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 166
    const-string/jumbo v2, "SecretKeyFactory.DESEDE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "DESEDESecretKeyFactory"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 167
    const-string/jumbo v2, "Alg.Alias.SecretKeyFactory.TDEA"

    const-string/jumbo v3, "DESEDE"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 170
    const-string/jumbo v2, "OpenSSLECDHKeyAgreement"

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "MD5WithRSA"

    const-string/jumbo v3, "OpenSSLSignature$MD5RSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v2, "Alg.Alias.Signature.MD5WithRSAEncryption"

    const-string/jumbo v3, "MD5WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 175
    const-string/jumbo v2, "Alg.Alias.Signature.MD5/RSA"

    const-string/jumbo v3, "MD5WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 176
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v3, "MD5WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 177
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    const-string/jumbo v3, "MD5WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 178
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string/jumbo v3, "MD5WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 180
    const-string/jumbo v2, "SHA1WithRSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA1RSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 182
    const-string/jumbo v2, "Alg.Alias.Signature.SHA1/RSA"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 183
    const-string/jumbo v2, "Alg.Alias.Signature.SHA-1/RSA"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 184
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 185
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 186
    const-string/jumbo v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 187
    const-string/jumbo v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 188
    const-string/jumbo v2, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 189
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    const-string/jumbo v3, "SHA1WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 191
    const-string/jumbo v2, "SHA224WithRSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA224RSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v2, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    const-string/jumbo v3, "SHA224WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 193
    const-string/jumbo v2, "Alg.Alias.Signature.SHA224/RSA"

    const-string/jumbo v3, "SHA224WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 194
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    const-string/jumbo v3, "SHA224WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 195
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.14"

    const-string/jumbo v3, "SHA224WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 196
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    .line 197
    const-string/jumbo v3, "SHA224WithRSA"

    .line 196
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 198
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    .line 199
    const-string/jumbo v3, "SHA224WithRSA"

    .line 198
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 201
    const-string/jumbo v2, "SHA256WithRSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA256RSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string/jumbo v3, "SHA256WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 203
    const-string/jumbo v2, "Alg.Alias.Signature.SHA256/RSA"

    const-string/jumbo v3, "SHA256WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 204
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string/jumbo v3, "SHA256WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 205
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    const-string/jumbo v3, "SHA256WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 206
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    .line 207
    const-string/jumbo v3, "SHA256WithRSA"

    .line 206
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 208
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    .line 209
    const-string/jumbo v3, "SHA256WithRSA"

    .line 208
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 211
    const-string/jumbo v2, "SHA384WithRSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA384RSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v2, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    const-string/jumbo v3, "SHA384WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 213
    const-string/jumbo v2, "Alg.Alias.Signature.SHA384/RSA"

    const-string/jumbo v3, "SHA384WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 214
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string/jumbo v3, "SHA384WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 215
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    const-string/jumbo v3, "SHA384WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 216
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    .line 217
    const-string/jumbo v3, "SHA384WithRSA"

    .line 216
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 219
    const-string/jumbo v2, "SHA512WithRSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA512RSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    const-string/jumbo v3, "SHA512WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 221
    const-string/jumbo v2, "Alg.Alias.Signature.SHA512/RSA"

    const-string/jumbo v3, "SHA512WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 222
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string/jumbo v3, "SHA512WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 223
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    const-string/jumbo v3, "SHA512WithRSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 224
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    .line 225
    const-string/jumbo v3, "SHA512WithRSA"

    .line 224
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 227
    const-string/jumbo v2, "OpenSSLSignatureRawRSA"

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v2, "NONEwithECDSA"

    const-string/jumbo v3, "OpenSSLSignatureRawECDSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v2, "SHA1withECDSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA1ECDSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v2, "Alg.Alias.Signature.ECDSA"

    const-string/jumbo v3, "SHA1withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 233
    const-string/jumbo v2, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string/jumbo v3, "SHA1withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 235
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string/jumbo v3, "SHA1withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 236
    const-string/jumbo v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    const-string/jumbo v3, "SHA1withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 239
    const-string/jumbo v2, "SHA224withECDSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA224ECDSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v2, "Alg.Alias.Signature.SHA224/ECDSA"

    const-string/jumbo v3, "SHA224withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 242
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    const-string/jumbo v3, "SHA224withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 243
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.1"

    const-string/jumbo v3, "SHA224withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 244
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    const-string/jumbo v3, "SHA224withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 247
    const-string/jumbo v2, "SHA256withECDSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA256ECDSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v2, "Alg.Alias.Signature.SHA256/ECDSA"

    const-string/jumbo v3, "SHA256withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 250
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    const-string/jumbo v3, "SHA256withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 251
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.2"

    const-string/jumbo v3, "SHA256withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 252
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    const-string/jumbo v3, "SHA256withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 254
    const-string/jumbo v2, "SHA384withECDSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA384ECDSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v2, "Alg.Alias.Signature.SHA384/ECDSA"

    const-string/jumbo v3, "SHA384withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 257
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    const-string/jumbo v3, "SHA384withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 258
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.3"

    const-string/jumbo v3, "SHA384withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 259
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    const-string/jumbo v3, "SHA384withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 261
    const-string/jumbo v2, "SHA512withECDSA"

    const-string/jumbo v3, "OpenSSLSignature$SHA512ECDSA"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v2, "Alg.Alias.Signature.SHA512/ECDSA"

    const-string/jumbo v3, "SHA512withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 264
    const-string/jumbo v2, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    const-string/jumbo v3, "SHA512withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 265
    const-string/jumbo v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.4"

    const-string/jumbo v3, "SHA512withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 266
    const-string/jumbo v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    const-string/jumbo v3, "SHA512withECDSA"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 268
    const-string/jumbo v2, "SHA1withRSA/PSS"

    const-string/jumbo v3, "OpenSSLSignature$SHA1RSAPSS"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v2, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string/jumbo v3, "SHA1withRSA/PSS"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 271
    const-string/jumbo v2, "SHA224withRSA/PSS"

    const-string/jumbo v3, "OpenSSLSignature$SHA224RSAPSS"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v2, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string/jumbo v3, "SHA224withRSA/PSS"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 274
    const-string/jumbo v2, "SHA256withRSA/PSS"

    const-string/jumbo v3, "OpenSSLSignature$SHA256RSAPSS"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v2, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string/jumbo v3, "SHA256withRSA/PSS"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 277
    const-string/jumbo v2, "SHA384withRSA/PSS"

    const-string/jumbo v3, "OpenSSLSignature$SHA384RSAPSS"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v2, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string/jumbo v3, "SHA384withRSA/PSS"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 280
    const-string/jumbo v2, "SHA512withRSA/PSS"

    const-string/jumbo v3, "OpenSSLSignature$SHA512RSAPSS"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string/jumbo v3, "SHA512withRSA/PSS"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 289
    const-string/jumbo v2, "SecureRandom.SHA1PRNG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLRandom"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 290
    const-string/jumbo v2, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string/jumbo v3, "Software"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 293
    const-string/jumbo v2, "RSA/ECB/NoPadding"

    const-string/jumbo v3, "OpenSSLCipherRSA$Raw"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string/jumbo v3, "RSA/ECB/NoPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 295
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    const-string/jumbo v3, "OpenSSLCipherRSA$PKCS1"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 298
    const-string/jumbo v2, "RSA/ECB/OAEPPadding"

    const-string/jumbo v3, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string/jumbo v3, "RSA/ECB/OAEPPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 300
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string/jumbo v3, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    .line 302
    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 301
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 304
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string/jumbo v3, "OpenSSLCipherRSA$OAEP$SHA224"

    .line 303
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    .line 306
    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    .line 305
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 308
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string/jumbo v3, "OpenSSLCipherRSA$OAEP$SHA256"

    .line 307
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    .line 310
    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 309
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 312
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string/jumbo v3, "OpenSSLCipherRSA$OAEP$SHA384"

    .line 311
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    .line 314
    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 313
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 316
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string/jumbo v3, "OpenSSLCipherRSA$OAEP$SHA512"

    .line 315
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    .line 318
    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 317
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 333
    const-string/jumbo v2, "AES/ECB/NoPadding"

    .line 334
    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES$ECB$NoPadding"

    .line 333
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v2, "AES/ECB/PKCS5Padding"

    .line 336
    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES$ECB$PKCS5Padding"

    .line 335
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v2, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    const-string/jumbo v3, "AES/ECB/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 338
    const-string/jumbo v2, "AES/CBC/NoPadding"

    .line 339
    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES$CBC$NoPadding"

    .line 338
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    .line 341
    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES$CBC$PKCS5Padding"

    .line 340
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v2, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 343
    const-string/jumbo v2, "AES/CTR/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES$CTR"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v2, "AES_128/ECB/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_128$ECB$NoPadding"

    .line 345
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v2, "AES_128/ECB/PKCS5Padding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_128$ECB$PKCS5Padding"

    .line 347
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v2, "Alg.Alias.Cipher.AES_128/ECB/PKCS7Padding"

    const-string/jumbo v3, "AES_128/ECB/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 351
    const-string/jumbo v2, "AES_128/CBC/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_128$CBC$NoPadding"

    .line 350
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v2, "AES_128/CBC/PKCS5Padding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_128$CBC$PKCS5Padding"

    .line 352
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v2, "Alg.Alias.Cipher.AES_128/CBC/PKCS7Padding"

    const-string/jumbo v3, "AES_128/CBC/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 356
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_128"

    const-string/jumbo v3, "AES_128/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 357
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_128"

    const-string/jumbo v3, "AES_128/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 358
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_128"

    const-string/jumbo v3, "AES_128/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 359
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_128"

    const-string/jumbo v3, "AES_128/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 360
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_128"

    const-string/jumbo v3, "AES_128/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 363
    const-string/jumbo v2, "AES_256/ECB/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_256$ECB$NoPadding"

    .line 362
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v2, "AES_256/ECB/PKCS5Padding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_256$ECB$PKCS5Padding"

    .line 364
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v2, "Alg.Alias.Cipher.AES_256/ECB/PKCS7Padding"

    const-string/jumbo v3, "AES_256/ECB/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 368
    const-string/jumbo v2, "AES_256/CBC/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_256$CBC$NoPadding"

    .line 367
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v2, "AES_256/CBC/PKCS5Padding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$AES_256$CBC$PKCS5Padding"

    .line 369
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v2, "Alg.Alias.Cipher.AES_256/CBC/PKCS7Padding"

    const-string/jumbo v3, "AES_256/CBC/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 373
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_256"

    const-string/jumbo v3, "AES_256/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 374
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_256"

    const-string/jumbo v3, "AES_256/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 375
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_256"

    const-string/jumbo v3, "AES_256/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 376
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_256"

    const-string/jumbo v3, "AES_256/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 377
    const-string/jumbo v2, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_256"

    const-string/jumbo v3, "AES_256/CBC/PKCS5PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 379
    const-string/jumbo v2, "DESEDE/CBC/NoPadding"

    .line 380
    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$NoPadding"

    .line 379
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v2, "DESEDE/CBC/PKCS5Padding"

    .line 382
    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$PKCS5Padding"

    .line 381
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v2, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    const-string/jumbo v3, "DESEDE/CBC/PKCS5Padding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 385
    const-string/jumbo v2, "ARC4"

    const-string/jumbo v3, "OpenSSLCipher$EVP_CIPHER$ARC4"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v2, "Alg.Alias.Cipher.ARCFOUR"

    const-string/jumbo v3, "ARC4"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 387
    const-string/jumbo v2, "Alg.Alias.Cipher.RC4"

    const-string/jumbo v3, "ARC4"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 388
    const-string/jumbo v2, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    const-string/jumbo v3, "ARC4"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 389
    const-string/jumbo v2, "Alg.Alias.Cipher.OID.1.2.840.113549.3.4"

    const-string/jumbo v3, "ARC4"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 391
    const-string/jumbo v2, "AES/GCM/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_AEAD$AES$GCM"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v2, "Alg.Alias.Cipher.GCM"

    const-string/jumbo v3, "AES/GCM/NoPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 393
    const-string/jumbo v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.6"

    const-string/jumbo v3, "AES/GCM/NoPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 394
    const-string/jumbo v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.26"

    const-string/jumbo v3, "AES/GCM/NoPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 395
    const-string/jumbo v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.46"

    const-string/jumbo v3, "AES/GCM/NoPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 397
    const-string/jumbo v2, "AES_128/GCM/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_AEAD$AES$GCM$AES_128"

    .line 396
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v2, "AES_256/GCM/NoPadding"

    const-string/jumbo v3, "OpenSSLCipher$EVP_AEAD$AES$GCM$AES_256"

    .line 398
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string/jumbo v2, "HmacMD5"

    const-string/jumbo v3, "OpenSSLMac$HmacMD5"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v2, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.1"

    const-string/jumbo v3, "HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 405
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC-MD5"

    const-string/jumbo v3, "HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 406
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC/MD5"

    const-string/jumbo v3, "HmacMD5"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 412
    const-string/jumbo v2, "HmacSHA1"

    const-string/jumbo v3, "OpenSSLMac$HmacSHA1"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "Alg.Alias.Mac.1.2.840.113549.2.7"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 414
    const-string/jumbo v2, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.2"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 415
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC-SHA1"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 416
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC/SHA1"

    const-string/jumbo v3, "HmacSHA1"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 419
    const-string/jumbo v2, "HmacSHA224"

    const-string/jumbo v3, "OpenSSLMac$HmacSHA224"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v2, "Alg.Alias.Mac.1.2.840.113549.2.8"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 421
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC-SHA224"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 422
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC/SHA224"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 423
    const-string/jumbo v2, "Alg.Alias.Mac.PBEWITHHMACSHA224"

    const-string/jumbo v3, "HmacSHA224"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 426
    const-string/jumbo v2, "HmacSHA256"

    const-string/jumbo v3, "OpenSSLMac$HmacSHA256"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v2, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 428
    const-string/jumbo v2, "Alg.Alias.Mac.2.16.840.1.101.3.4.2.1"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 429
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC-SHA256"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 430
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC/SHA256"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 431
    const-string/jumbo v2, "Alg.Alias.Mac.PBEWITHHMACSHA256"

    const-string/jumbo v3, "HmacSHA256"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 434
    const-string/jumbo v2, "HmacSHA384"

    const-string/jumbo v3, "OpenSSLMac$HmacSHA384"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v2, "Alg.Alias.Mac.1.2.840.113549.2.10"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 436
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC-SHA384"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 437
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC/SHA384"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 438
    const-string/jumbo v2, "Alg.Alias.Mac.PBEWITHHMACSHA384"

    const-string/jumbo v3, "HmacSHA384"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 441
    const-string/jumbo v2, "HmacSHA512"

    const-string/jumbo v3, "OpenSSLMac$HmacSHA512"

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string/jumbo v2, "Alg.Alias.Mac.1.2.840.113549.2.11"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 443
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC-SHA512"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 444
    const-string/jumbo v2, "Alg.Alias.Mac.HMAC/SHA512"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 445
    const-string/jumbo v2, "Alg.Alias.Mac.PBEWITHHMACSHA512"

    const-string/jumbo v3, "HmacSHA512"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 449
    const-string/jumbo v2, "CertificateFactory.X509"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "OpenSSLX509CertificateFactory"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 450
    const-string/jumbo v2, "Alg.Alias.CertificateFactory.X.509"

    const-string/jumbo v3, "X509"

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v3}, vtable@15
    nop

    .line 451
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    const-string/jumbo v3, "|"

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "PKCS#8"

    .line 539
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string/jumbo v2, "KeyAgreement.ECDH"

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "typeAndAlgName"    # Ljava/lang/String;
    .param p2, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p3, "supportedKeyClasses"    # Ljava/lang/String;
    .param p4, "supportedKeyFormats"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    if-eqz p3, :cond_1c

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_1c
    if-eqz p4, :cond_35

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyFormats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_35
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "RAW"

    .line 460
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLRSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-string/jumbo v3, "|"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    const-string/jumbo v3, "|"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 521
    const-string/jumbo v3, "|"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 521
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    .line 524
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string/jumbo v2, "Signature.NONEwithRSA"

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLRSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 483
    const-string/jumbo v3, "|"

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 483
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    const-string/jumbo v3, "|"

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    const-string/jumbo v3, "|"

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 503
    const-string/jumbo v3, "|"

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 503
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 504
    const-string/jumbo v3, "|"

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 504
    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    const-string/jumbo v3, "|"

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "PKCS#8|X.509"

    .line 508
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "RAW"

    .line 472
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method
