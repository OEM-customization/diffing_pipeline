.class public Ljava/security/NoSuchProviderException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchProviderException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x75cbd4abb73cabcaL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
