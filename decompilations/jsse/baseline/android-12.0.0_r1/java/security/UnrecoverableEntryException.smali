.class public Ljava/security/UnrecoverableEntryException;
.super Ljava/security/GeneralSecurityException;
.source "UnrecoverableEntryException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x3ed3a485dad212c7L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method