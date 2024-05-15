.class public final synthetic Ljava/util/-$$Lambda$Collections$CheckedMap$UHd_dm3NjSdMnE1bZpQe0MXp_Gk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collections$CheckedMap;

.field public final synthetic blacklist f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Collections$CheckedMap$UHd_dm3NjSdMnE1bZpQe0MXp_Gk;->f$0:Ljava/util/Collections$CheckedMap;

    iput-object p2, p0, Ljava/util/-$$Lambda$Collections$CheckedMap$UHd_dm3NjSdMnE1bZpQe0MXp_Gk;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljava/util/-$$Lambda$Collections$CheckedMap$UHd_dm3NjSdMnE1bZpQe0MXp_Gk;->f$0:Ljava/util/Collections$CheckedMap;

    iget-object v1, p0, Ljava/util/-$$Lambda$Collections$CheckedMap$UHd_dm3NjSdMnE1bZpQe0MXp_Gk;->f$1:Ljava/util/function/BiFunction;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Collections$CheckedMap;->lambda$merge$2$Collections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
