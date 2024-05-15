.class public interface abstract Ljava/lang/reflect/Type;
.super Ljava/lang/Object;
.source "Type.java"


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
