.class public final synthetic Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiPredicate;

.field public final synthetic blacklist f$1:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiPredicate;

    iput-object p2, p0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiPredicate;

    iget-object v1, p0, Ljava/util/function/BiPredicate$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiPredicate;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/BiPredicate;->lambda$and$0(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
