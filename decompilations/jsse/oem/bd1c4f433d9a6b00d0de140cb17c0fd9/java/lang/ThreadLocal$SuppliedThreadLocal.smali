.class final Ljava/lang/ThreadLocal$SuppliedThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuppliedThreadLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Ljava/lang/ThreadLocal$SuppliedThreadLocal;, "Ljava/lang/ThreadLocal$SuppliedThreadLocal<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Ljava/lang/ThreadLocal$SuppliedThreadLocal;->supplier:Ljava/util/function/Supplier;

    .line 280
    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Ljava/lang/ThreadLocal$SuppliedThreadLocal;, "Ljava/lang/ThreadLocal$SuppliedThreadLocal<TT;>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$SuppliedThreadLocal;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
