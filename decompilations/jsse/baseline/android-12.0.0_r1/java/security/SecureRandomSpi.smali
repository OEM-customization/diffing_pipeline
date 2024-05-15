.class public abstract Ljava/security/SecureRandomSpi;
.super Ljava/lang/Object;
.source "SecureRandomSpi.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2985338206ba2b96L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api engineGenerateSeed(I)[B
.end method

.method protected abstract whitelist test-api engineNextBytes([B)V
.end method

.method protected abstract whitelist test-api engineSetSeed([B)V
.end method
