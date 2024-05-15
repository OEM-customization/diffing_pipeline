.class final synthetic Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic $INST$0:Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->lambda$-java_util_concurrent_ConcurrentSkipListMap$EntrySpliterator_136111(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;

    invoke-direct {v0}, Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;-><init>()V

    sput-object v0, Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;->$INST$0:Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
