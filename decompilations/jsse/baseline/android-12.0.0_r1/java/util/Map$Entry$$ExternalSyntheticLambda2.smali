.class public final synthetic Ljava/util/Map$Entry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/Map$Entry$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Map$Entry$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/Map$Entry$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Ljava/util/Map$Entry$$ExternalSyntheticLambda2;->INSTANCE:Ljava/util/Map$Entry$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Ljava/util/Map$Entry;->lambda$comparingByKey$bbdbfea9$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method