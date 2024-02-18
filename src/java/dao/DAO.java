/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Anime;
import model.genres;

public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Anime> getRankAnime() {
        List<Anime> list = new ArrayList<>();
        String query = "Select top 12 * from ListAnime ORDER BY Ranked ASC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Anime(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9),
                        rs.getString(10),
                        rs.getString(11)
                ));

            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<genres> getCategory() {
        List<genres> list = new ArrayList<>();
        String query = "select * from genres";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new genres(rs.getInt(1), rs.getString(2), rs.getString(3)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Anime> getViewAnime() {
        List<Anime> list = new ArrayList<>();
        String query = "Select top 5 * from ListAnime ORDER BY Members DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Anime(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9),
                        rs.getString(10),
                        rs.getString(11)
                ));

            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Anime> getLastAnime() {
        List<Anime> list = new ArrayList<>();
        String query = "Select top 12 * from ListAnime ORDER BY AIRED DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Anime(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9),
                        rs.getString(10),
                        rs.getString(11)
                ));

            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Anime> getUnderatedAnime() {
        List<Anime> list = new ArrayList<>();
        String query = "Select top 12 * from ListAnime ORDER BY Ranked DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Anime(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9),
                        rs.getString(10),
                        rs.getString(11)
                ));

            }
        } catch (Exception e) {
        }

        return list;
    }

    public String getGenresNameByID(String cid) {
        String result = "";
        String query = "select genre_name from genres where genre_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while(rs.next()){
                result = rs.getString(1);
            }
        } catch (Exception e) {
        }
        return result;
    }

    public List<Anime> getGenresByID(String cid) {
        List<Anime> list = new ArrayList<>();
        String query = "select * from ListAnime where Genre = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Anime(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9),
                        rs.getString(10),
                        rs.getString(11)
                ));

            }
        } catch (Exception e) {
        }

        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Anime> anime = dao.getGenresByID("1");
        for (Anime o : anime) {
            System.out.println(o);
        }
    }
}
