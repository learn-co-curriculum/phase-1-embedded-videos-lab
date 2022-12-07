require ( './helpers.js' );

const chai = require("chai");
chai.use(require("chai-dom"));
const { expect } = chai;

describe("index.html", () => {
  describe("the body", () => {
    it("contains a <video> tag", () => {
      const body = document.querySelector("body");

      const video = body.querySelector("video");
      const hint1 = "No <video> tag found";
      expect(video, hint1).to.exist;
    });
  });

  describe("the video tag", () => {
    before(() => {
      video = document.querySelector("body").querySelector("video");
      const hint = "No <video> tag found";
      expect(video, hint).to.exist;
    });

    it("contains a 'controls' attribute", () => {
      const hint = "Include a controls attribute";
      expect(video, hint).to.have.attribute("controls");
    });

    it("contains an 'autoplay' attribute", () => {
      const hint = "Include an 'autoplay' attribute";
      expect(video, hint).to.have.attribute("autoplay");
    });

    it("contains a 'width' attribute set to '600'", () => {
      const hint = "Include a 'width' attribute with a value of '600'";
      expect(video, hint).to.have.attribute("width").match(/600/);
    });

    it("contains a 'height' attribute set to '400'", () => {
      const hint = "Include a 'height' attribute with a value of '400'";
      expect(video, hint).to.have.attribute("height").match(/400/);
    });

    it("contains two nested <source> tags", () => {
      const sources = video.querySelectorAll("source");
      const hint = `Only found ${sources.length} <source> tag(s) nested inside <video>`;
      expect(sources.length, hint).to.equal(2);
    });
  });

  describe("the source tags", () => {
    before(() => {
      const video = document.querySelector("body").querySelector("video");
      sources = video.querySelectorAll("source");
      const hint = `Only found ${sources.length} <source> tag(s) nested inside <video>`;
      expect(sources.length, hint).to.equal(2);
    });

    it("each contain a 'src' attribute", () => {
      sources.forEach((source, index) => {
        const hint = `No src attribute found on source tag ${index + 1}`;
        expect(source, hint).to.have.attribute("src");
      });
    });

    it("first source tag has 'type' attribute with a value of 'video/mp4'", () => {
      const hint = "The first source tag should have 'type' set to 'video/mp4'";
      expect(sources[0], hint).to.have.attribute("type", "video/mp4");
    });

    it("second source tag has 'type' attribute with a value of 'video/ogg'", () => {
      const hint =
        "The second source tag should have 'type' set to 'video/ogg'";
      expect(sources[1], hint).to.have.attribute("type", "video/ogg");
    });
  });
});
