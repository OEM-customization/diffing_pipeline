.class public final Lcom/android/org/conscrypt/Conscrypt$ServerSocketFactories;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerSocketFactories"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z
    .registers 2
    .param p0, "factory"    # Ljavax/net/ssl/SSLServerSocketFactory;

    .prologue
    .line 196
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    return v0
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLServerSocketFactory;Z)V
    .registers 3
    .param p0, "factory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p1, "useEngineSocket"    # Z

    .prologue
    .line 221
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$ServerSocketFactories;->toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@17
    nop

    .line 222
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .registers 1
    .param p0, "useEngineSocket"    # Z

    .prologue
    .line 212
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    .line 213
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;
    .registers 4
    .param p0, "factory"    # Ljavax/net/ssl/SSLServerSocketFactory;

    .prologue
    .line 200
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$ServerSocketFactories;->isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt server socket factory: "

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

    .line 201
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_28
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    .end local p0    # "factory":Ljavax/net/ssl/SSLServerSocketFactory;
    return-object p0
.end method