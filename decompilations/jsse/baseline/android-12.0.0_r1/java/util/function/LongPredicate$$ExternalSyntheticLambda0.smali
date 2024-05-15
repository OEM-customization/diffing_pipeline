.class public final synthetic Ljava/util/function/LongPredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongPredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(J)Z
    .registers 4

    iget-object v0, p0, Ljava/util/function/LongPredicate$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/LongPredicate;

    invoke-static {v0, p1, p2}, Ljava/util/function/LongPredicate;->lambda$negate$1(Ljava/util/function/LongPredicate;J)Z

    move-result p1

    return p1
.end method
