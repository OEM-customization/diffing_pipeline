.class public final synthetic Ljava/util/function/-$$Lambda$Predicate$GyIVQ08CWbeMZxHDkkrN-5apRkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Predicate;

.field public final synthetic blacklist f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$Predicate$GyIVQ08CWbeMZxHDkkrN-5apRkc;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$Predicate$GyIVQ08CWbeMZxHDkkrN-5apRkc;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljava/util/function/-$$Lambda$Predicate$GyIVQ08CWbeMZxHDkkrN-5apRkc;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$Predicate$GyIVQ08CWbeMZxHDkkrN-5apRkc;->f$1:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Ljava/util/function/Predicate;->lambda$and$0(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
