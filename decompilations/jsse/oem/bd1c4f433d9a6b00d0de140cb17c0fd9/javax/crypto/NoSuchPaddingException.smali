.class public Ljavax/crypto/NoSuchPaddingException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchPaddingException.java"


# static fields
.field private static final serialVersionUID:J = -0x3f7626dcc02d596aL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method
