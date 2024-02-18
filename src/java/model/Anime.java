/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class Anime {
    private int UID;
    private String title;
    private String description;
    private int genre;
    private Date aired;
    private int episode;
    private int member;
    private int ranked;
    private double score;
    private String img;
    private String link;

    public Anime() {
    }

    public Anime(int UID, String title, String description, int genre, Date aired, int episode, int member, int ranked, double score, String img, String link) {
        this.UID = UID;
        this.title = title;
        this.description = description;
        this.genre = genre;
        this.aired = aired;
        this.episode = episode;
        this.member = member;
        this.ranked = ranked;
        this.score = score;
        this.img = img;
        this.link = link;
    }

    public int getUID() {
        return UID;
    }

    public void setUID(int UID) {
        this.UID = UID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getGenre() {
        return genre;
    }

    public void setGenre(int genre) {
        this.genre = genre;
    }

    public Date getAired() {
        return aired;
    }

    public void setAired(Date aired) {
        this.aired = aired;
    }

    public int getEpisode() {
        return episode;
    }

    public void setEpisode(int episode) {
        this.episode = episode;
    }

    public int getMember() {
        return member;
    }

    public void setMember(int member) {
        this.member = member;
    }

    public int getRanked() {
        return ranked;
    }

    public void setRanked(int ranked) {
        this.ranked = ranked;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "Anime{" + "UID=" + UID + ", title=" + title + ", description=" + description + ", genre=" + genre + ", aired=" + aired + ", episode=" + episode + ", member=" + member + ", ranked=" + ranked + ", score=" + score + ", img=" + img + ", link=" + link + '}';
    }
    
}
