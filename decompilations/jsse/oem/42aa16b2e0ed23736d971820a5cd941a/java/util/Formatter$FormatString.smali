.class interface abstract Ljava/util/Formatter$FormatString;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FormatString"
.end annotation


# virtual methods
.method public abstract greylist-max-o index()I
.end method

.method public abstract greylist-max-o print(Ljava/lang/Object;Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api toString()Ljava/lang/String;
.end method
