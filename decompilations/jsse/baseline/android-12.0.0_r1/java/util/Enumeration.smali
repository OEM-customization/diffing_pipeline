.class public interface abstract Ljava/util/Enumeration;
.super Ljava/lang/Object;
.source "Enumeration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api hasMoreElements()Z
.end method

.method public abstract whitelist test-api nextElement()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
