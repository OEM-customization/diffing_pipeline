.class public final synthetic Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collections$CheckedMap;

.field public final synthetic blacklist f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collections$CheckedMap;

    iput-object p2, p0, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collections$CheckedMap;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiFunction;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Collections$CheckedMap;->lambda$merge$2$Collections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
