.class public interface abstract Ljavax/security/auth/Destroyable;
.super Ljava/lang/Object;
.source "Destroyable.java"


# virtual methods
.method public destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljavax/security/auth/DestroyFailedException;

    invoke-direct {v0}, Ljavax/security/auth/DestroyFailedException;-><init>()V

    throw v0
.end method

.method public isDestroyed()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
