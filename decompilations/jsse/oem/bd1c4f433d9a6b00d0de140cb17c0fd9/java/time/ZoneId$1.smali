.class Ljava/time/ZoneId$1;
.super Ljava/lang/Object;
.source "ZoneId.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/ZoneId;->toTemporal()Ljava/time/temporal/TemporalAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/time/ZoneId;


# direct methods
.method constructor <init>(Ljava/time/ZoneId;)V
    .registers 2
    .param p1, "this$0"    # Ljava/time/ZoneId;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/time/ZoneId$1;->this$0:Ljava/time/ZoneId;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 526
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 532
    iget-object v0, p0, Ljava/time/ZoneId$1;->this$0:Ljava/time/ZoneId;

    return-object v0

    .line 534
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
