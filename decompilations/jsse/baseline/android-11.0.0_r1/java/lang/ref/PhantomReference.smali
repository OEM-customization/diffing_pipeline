.class public Ljava/lang/ref/PhantomReference;
.super Ljava/lang/ref/Reference;
.source "PhantomReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
