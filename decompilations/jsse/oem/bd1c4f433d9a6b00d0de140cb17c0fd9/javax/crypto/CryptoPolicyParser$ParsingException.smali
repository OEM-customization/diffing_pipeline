.class final Ljavax/crypto/CryptoPolicyParser$ParsingException;
.super Ljava/security/GeneralSecurityException;
.source "CryptoPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/CryptoPolicyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParsingException"
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "line"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "line"    # I
    .param p2, "expect"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
