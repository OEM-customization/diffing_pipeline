.class final Ljavax/crypto/CryptoPolicyParser;
.super Ljava/lang/Object;
.source "CryptoPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/CryptoPolicyParser$ParsingException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPermissions()[Ljavax/crypto/CryptoPermission;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method read(Ljava/io/Reader;)V
    .registers 2
    .param p1, "policy"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/CryptoPolicyParser$ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method
