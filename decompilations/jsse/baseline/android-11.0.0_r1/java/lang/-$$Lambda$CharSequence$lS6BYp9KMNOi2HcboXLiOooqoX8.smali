.class public final synthetic Ljava/lang/-$$Lambda$CharSequence$lS6BYp9KMNOi2HcboXLiOooqoX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/-$$Lambda$CharSequence$lS6BYp9KMNOi2HcboXLiOooqoX8;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/lang/-$$Lambda$CharSequence$lS6BYp9KMNOi2HcboXLiOooqoX8;->f$0:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/CharSequence;->lambda$chars$0(Ljava/lang/CharSequence;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
