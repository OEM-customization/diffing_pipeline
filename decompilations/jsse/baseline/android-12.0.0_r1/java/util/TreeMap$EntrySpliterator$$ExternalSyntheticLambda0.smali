.class public final synthetic Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;

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

    invoke-static {p1, p2}, Ljava/util/TreeMap$EntrySpliterator;->lambda$getComparator$d5a01062$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method