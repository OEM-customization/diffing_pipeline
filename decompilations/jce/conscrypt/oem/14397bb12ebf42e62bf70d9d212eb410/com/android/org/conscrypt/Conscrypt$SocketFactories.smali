.class public final Lcom/android/org/conscrypt/Conscrypt$SocketFactories;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketFactories"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    .registers 2
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 158
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    return v0
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .registers 3
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "useEngineSocket"    # Z

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$SocketFactories;->toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@20
    nop

    .line 183
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .registers 1
    .param p0, "useEngineSocket"    # Z

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    .line 175
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
    .registers 4
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$SocketFactories;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt socket factory: "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@3
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@50
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_28
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    .end local p0    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    return-object p0
.end method
