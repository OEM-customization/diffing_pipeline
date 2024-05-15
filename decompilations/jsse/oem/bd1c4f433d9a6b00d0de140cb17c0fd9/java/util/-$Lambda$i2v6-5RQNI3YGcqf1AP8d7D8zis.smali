.class final synthetic Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->lambda$-java_util_Collections$UnmodifiableMap$UnmodifiableEntrySet_67837(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
