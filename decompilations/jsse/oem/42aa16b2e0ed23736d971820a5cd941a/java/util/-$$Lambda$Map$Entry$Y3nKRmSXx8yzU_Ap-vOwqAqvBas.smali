.class public final synthetic Ljava/util/-$$Lambda$Map$Entry$Y3nKRmSXx8yzU_Ap-vOwqAqvBas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Map$Entry$Y3nKRmSXx8yzU_Ap-vOwqAqvBas;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Ljava/util/-$$Lambda$Map$Entry$Y3nKRmSXx8yzU_Ap-vOwqAqvBas;->f$0:Ljava/util/Comparator;

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {v0, p1, p2}, Ljava/util/Map$Entry;->lambda$comparingByValue$827a17d5$1(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
