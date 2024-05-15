.class Ljava/time/format/DateTimeFormatterBuilder$2;
.super Ljava/time/format/DateTimeTextProvider;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/time/format/DateTimeFormatterBuilder;

.field final synthetic val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V
    .registers 3
    .param p1, "this$0"    # Ljava/time/format/DateTimeFormatterBuilder;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$2;->this$0:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$2;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    .line 778
    invoke-direct {p0}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "style"    # Ljava/time/format/TextStyle;
    .param p5, "locale"    # Ljava/util/Locale;

    .prologue
    .line 781
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$2;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "style"    # Ljava/time/format/TextStyle;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 785
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$2;->val$store:Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
