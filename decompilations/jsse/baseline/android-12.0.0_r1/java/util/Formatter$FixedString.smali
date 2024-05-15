.class Ljava/util/Formatter$FixedString;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedString"
.end annotation


# instance fields
.field private greylist-max-o s:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/Formatter;


# direct methods
.method constructor blacklist <init>(Ljava/util/Formatter;Ljava/lang/String;)V
    .registers 3
    .param p2, "s"    # Ljava/lang/String;

    .line 2680
    iput-object p1, p0, Ljava/util/Formatter$FixedString;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist-max-o index()I
    .registers 2

    .line 2681
    const/4 v0, -0x2

    return v0
.end method

.method public greylist-max-o print(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2683
    iget-object v0, p0, Ljava/util/Formatter$FixedString;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v0}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2684
    iget-object v0, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    return-object v0
.end method
