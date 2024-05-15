.class public final Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "OpenSSLECKeyPairGenerator.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final DEFAULT_KEY_SIZE:I = 0x100

.field private static final SIZE_TO_CURVE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "secp224r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "secp384r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "secp521r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const-string/jumbo v0, "EC"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 58
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static assertCurvesAreValid()V
    .registers 6

    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "invalidCurves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "curveName$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    if-nez v3, :cond_f

    .line 128
    #disallowed odex opcode
    #invoke-virtual-quick {v2, v0}, vtable@11
    nop

    goto :goto_f

    .line 131
    .end local v0    # "curveName":Ljava/lang/String;
    :cond_25
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@21
    nop

    move-result v3

    if-lez v3, :cond_4d

    .line 132
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid curve names: "

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    .line 133
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@22
    nop

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 132
    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@7
    nop

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 135
    :cond_4d
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 7

    .prologue
    .line 62
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    if-nez v2, :cond_36

    .line 63
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    #disallowed odex opcode
    #iput-object-quick v2, p0, field@0x10
    nop

    .line 65
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    if-nez v2, :cond_36

    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Curve not recognized: "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v0}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v0    # "curveName":Ljava/lang/String;
    :cond_36
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 71
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@12
    nop

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_generate_key(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v2

    .line 70
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 72
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    invoke-direct {v3, v4, v1}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    new-instance v4, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x10
    nop

    invoke-direct {v4, v5, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 8
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 77
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_28

    .line 79
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown key size "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, p1}, vtable@72
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_28
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 87
    .local v1, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-nez v1, :cond_48

    .line 88
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown curve "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v0}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_48
    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x10
    nop

    .line 92
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 10
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 97
    instance-of v4, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v4, :cond_e

    move-object v2, p1

    .line 98
    nop

    nop

    .line 100
    .local v2, "ecParam":Ljava/security/spec/ECParameterSpec;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    #disallowed odex opcode
    #iput-object-quick v4, p0, field@0x10
    nop

    .line 121
    .end local v2    # "ecParam":Ljava/security/spec/ECParameterSpec;
    :goto_d
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 101
    :cond_e
    instance-of v4, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v4, :cond_3c

    move-object v1, p1

    .line 102
    nop

    nop

    .line 104
    .local v1, "ecParam":Ljava/security/spec/ECGenParameterSpec;
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@11
    nop

    move-result-object v0

    .line 110
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    .line 112
    .local v3, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-nez v3, :cond_39

    .line 113
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown curve name: "

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@77
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v0}, vtable@77
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@7
    nop

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_39
    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0x10
    nop

    goto :goto_d

    .line 118
    .end local v0    # "curveName":Ljava/lang/String;
    .end local v1    # "ecParam":Ljava/security/spec/ECGenParameterSpec;
    .end local v3    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_3c
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    .line 119
    const-string/jumbo v5, "parameter must be ECParameterSpec or ECGenParameterSpec"

    .line 118
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
